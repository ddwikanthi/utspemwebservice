<?php

namespace App\Http\Controllers;
use App\ModelSaya;
use Illuminate\Http\Request;
class Buku extends Controller
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
    $data = ModelSaya::all();
    return response($data);
	}
	
	public function show($id){
    $data = ModelSaya::where('id',$id)->get();
    return response ($data);
	}
	
	public function store (Request $request){
    $data = new ModelSaya();
    $data->nmbuku = $request->input('nmbuku');
    $data->pengarang = $request->input('pengarang');
    $data->save();
    return response('Berhasil Tambah Data');
	}
	
	public function update(Request $request, $id){
    $data = ModelSaya::where('id',$id)->first();
    $data->nmbuku = $request->input('nmbuku');
    $data->pengarang = $request->input('pengarang');
    $data->save();
    return response('Berhasil Merubah Data');
	}

	public function destroy($id){
    $data = ModelSaya::where('id',$id)->first();
    $data->delete();
    return response('Berhasil Menghapus Data');
	}
}
