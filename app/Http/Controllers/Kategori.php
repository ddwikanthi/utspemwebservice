<?php

namespace App\Http\Controllers;
use App\ModelKategori;
use Illuminate\Http\Request;
class Kategori extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }
	
	public function index(){
    $data = ModelKategori::all();
    return response($data);
	}
	
	public function show($id){
    $data = ModelKategori::where('id',$id)->get();
    return response ($data);
	}
	
	public function store (Request $request){
    $data = new ModelKategori();
    $data->nmkat = $request->input('nmkat');
    $data->infokat = $request->input('infokat');
    $data->save();
    return response('Berhasil Tambah Data');
	}
	
	public function update(Request $request, $id){
    $data = ModelKategori::where('id',$id)->first();
    $data->nmkat = $request->input('nmkat');
    $data->infokat = $request->input('infokat');
    $data->save();
    return response('Berhasil Merubah Data');
	}

	public function destroy($id){
    $data = ModelKategori::where('id',$id)->first();
    $data->delete();
    return response('Berhasil Menghapus Data');
	}
}
