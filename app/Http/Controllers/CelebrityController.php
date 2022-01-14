<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Celebrity;

class CelebrityController extends Controller
{
    private $celebrity;

    public function __construct(Celebrity $celebrity)
    {
        $this->celebrity = $celebrity;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $celebrities = $this->celebrity->all();
        
        return view('celebrity.index', ['celebrities'=>$celebrities]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('celebrity.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the inputs
        $request->validate([
            'name' => 'required',
            'surname'=>'required',
            'description'=>'required',

        ]);

        // ensure the request has a file before we attempt anything else.
        if ($request->hasFile('file')) {

            $request->validate([
                'image' => 'mimes:jpeg,bmp,png' // Only allow .jpg, .bmp and .png file types.
            ]);

            // Save the file locally in the storage/public/ folder under a new folder named /celebrity
            $request->file->store('celebrity', 'public');

            // Store the record, using the new file hashname which will be it's new filename identity.
            $celebrity = new Celebrity([
                "name" => $request->get('name'),
                "surname" => $request->get('surname'),
                "description" => $request->get('description'),
                "image_path" => $request->file->hashName()
            ]);
            $celebrity->save(); // Finally, save the record.
        }

        return view('celebrity.create');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $celebrity = $this->celebrity->find($id);

        return view('celebrity.show', ['celebrity'=> $celebrity]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, Request $request)
    {
        $celebrity = $this->celebrity->find($id);
        return view('celebrity.edit', ['celebrity'=> $celebrity]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $data = $request->all();
        $celebrity = $this->celebrity->find($data['id']);
        $celebrity->update($data);

        return $this->show($celebrity->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function displayImage($filename)
    { 
        $path = storage_public('celebrity/' . $filename);
        if (!File::exists($path)) {

            abort(404);

        }

        $file = File::get($path);

        $type = File::mimeType($path);
        $response = Response::make($file, 200);
        $response->header("Content-Type", $type);

        return $response;

    }
}
