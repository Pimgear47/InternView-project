<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Announcement;

class AnnouncementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $announcement = Announcement::orderBy('created_at','desc')->get();
        return response()->json($announcement);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $announcement = new Announcement();
        $announcement->title = $request->get('title');
        $announcement->name_org = $request->get('name_org');
        $announcement->announcer = $request->get('announcer');
        $announcement->detail = $request->get('detail');
        $announcement->contact_person = $request->get('contact_person');
        $announcement->tel_number = $request->get('tel_number');
        $announcement->address = $request->get('address');
        $announcement->email = $request->get('email');
        $announcement->save();
        return response()->json($announcement);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $announcement = Announcement::find($id);
        return response()->json($announcement);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $announcement = Announcement::find($id);
        $announcement->title = $request->get('title');
        $announcement->name_org = $request->get('name_org');
        $announcement->announcer = $request->get('announcer');
        $announcement->detail = $request->get('detail');
        $announcement->contact_person = $request->get('contact_person');
        $announcement->address = $request->get('address');
        $announcement->update();
        return response()->json($announcement);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $announcement = Announcement::find($id);
        $announcement->delete();
        return response()->json($announcement);
    }
}
