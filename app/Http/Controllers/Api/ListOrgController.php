<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\ListOrg;
use App\Review;
use Illuminate\Support\Facades\Storage;

class ListOrgController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listorgs=ListOrg::with('Review')->get();
        return response()->json($listorgs);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $listorg=new ListOrg();
        $listorg->name_org=$request->get('name_orgS');
        $listorg->description=$request->get('description');
        $listorg->address=$request->get('address');
        if ($request->get('image')){
            $listorg->image=$request->get('image');
        }
        $listorg->save();
        return response()->json($listorg);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Reviews=Review::with('User')->where('org_id',$id)->get();
        $listorg=ListOrg::find($id);
        return response()->json(['ListOrg' => $listorg,'Review' => $Reviews]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
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
        $listorg=ListOrg::find($id);
        $listorg->name_org = $request->get('name_org');
        $listorg->description=$request->get('description');
        $listorg->address=$request->get('address');
        $listorg->update();
        return response()->json($listorg);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $listorg=ListOrg::find($id);
        $listorg->delete();
        return response()->json($listorg);
    }
}