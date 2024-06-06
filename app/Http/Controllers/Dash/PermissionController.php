<?php

namespace App\Http\Controllers\Dash;

use App\Models\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Permission;

class PermissionController extends Controller
{
    public function index($admin_id)
    {
        $admin = Admin::with('permissions')->findOrFail($admin_id);
        $permissions = Permission::get();

        return view('admin.permissions', compact('admin', 'permissions'));
    }

    public function store(Request $request, $admin_id)
    {
        $admin = Admin::findOrFail($admin_id);
        $admin->permissions()->detach();
        $admin->permissions()->attach($request->permissions);
        return redirect()->back()->with('success', __('dash.alert_update'));
    }


} //end of class
