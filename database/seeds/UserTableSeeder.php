<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Role;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role_admin = Role::where('name', 'Admin')->first();
        $role_author = Role::where('name', 'Author')->first();
        $role_user = Role::where('name', 'User')->first();


        $user = new User();
        $user->first_name = 'Alex';
        $user->email = 'visitor@web.loc';
        $user->password = bcrypt('Visitor');
        $user->save();
        $user->roles()->attach($role_user);

        $admin = new User();
        $admin->first_name = 'Alex';
        $admin->email = 'admin@web.loc';
        $admin->password = bcrypt('Admin');
        $admin->save();
        $admin->roles()->attach($role_admin);

        $author = new User();
        $author->first_name = 'Alex';
        $author->email = 'author@web.loc';
        $author->password = bcrypt('Author');
        $author->save();
        $author->roles()->attach($role_author);
    }
}
