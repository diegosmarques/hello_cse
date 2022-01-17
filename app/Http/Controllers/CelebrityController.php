<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Celebrity;
use Illuminate\Support\Facades\File; 

class CelebrityController extends Controller
{
    private $celebrity;

    public function __construct(Celebrity $celebrity)
    {
        $this->celebrity = $celebrity;
    }
    /**
     * Display a listing of celebrities and is also the main page .
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $celebrities = $this->celebrity->all();
        
            return view('celebrity.index', ['celebrities'=>$celebrities]);
        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }

    /**
     * Show the form for creating a new Celebrity.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        try {
            return view('celebrity.create');

        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
        
    }

    /**
     * Store a newly created Celebrity in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
             // Validate the inputs, all the fields are required 
            $request->validate([
                'name' => 'required |max:255',
                'surname'=>'required |max:255',
                'description'=>'required',
                'file' => 'required|mimes:jpg,jpeg,png,gif,svg|max:2048'

            ]);

            // ensure the request has a file before we attempt anything else.
            if ($request->hasFile('file')) {

                // Save the file locally in the storage/public/ folder under a new folder named /images
                $request->file->store('images', 'public');

                // Store the record, using the new file hashname which will be it's new filename identity.
                $celebrity = new Celebrity([
                    "name" => $request->get('name'),
                    "surname" => $request->get('surname'),
                    "description" => $request->get('description'),
                    "image_path" => $request->file->hashName()
                ]);
                $celebrity->save(); // Finally, save the record.
            }

            return  redirect()->route('celebrity.index');
        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }

    /**
     * Display the specified celebrity.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $celebrity = $this->celebrity->find($id);

            return view('celebrity.show', ['celebrity'=> $celebrity]);
        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }

    /**
     * Show the form for editing the specified celebrity.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, Request $request)
    {
        try {
            $celebrity = $this->celebrity->find($id);
            return view('celebrity.edit', ['celebrity'=> $celebrity]);
        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
        
    }

    /**
     * Update the specified Celebrity in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        try {
            $data = $request->all();
            // Validate the inputs
            $request->validate([
                'name' => 'required |max:255',
                'surname'=>'required |max:255',
                'description'=>'required',
                'file' => 'mimes:jpg,jpeg,png,gif,svg|max:2048' // Only allow .jpg, .bmp and .png file types.

            ]);

            $celebrity = $this->celebrity->find($data['id']);

            // ensure the request has a file before we attempt anything else.
            if ($request->hasFile('file')) {
                
                // Delete the old file 
                File::delete(public_path('storage/images/'.$celebrity->image_path));
                // Save the new file locally in the storage/public/ folder under a new folder named /images
                $request->file->store('images', 'public');
                // Store the record, using the new file hashname which will be it's new filename identity.
                $data["image_path"]= $request->file->hashName();
                $celebrity->update($data); // Finally, update the record.
                
            }
            else{
                // In the case the Admin does not upload we keep the last file name on the database
                unset($data["image_path"]);
                $celebrity->update($data);
            }
            return  redirect()->route('celebrity.index');
        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            //find the resource on database
            $celebrity = $this->celebrity->find($id);
            //delete the image on the public storage
            File::delete(public_path('storage/images/'.$celebrity->image_path));
            
            // finally delete the resource
            $celebrity->delete();

            return  redirect()->route('celebrity.index');
        } 
        catch (Throwable $e) {
            report($e);
    
            return false;
        }
        


    }

    
}
