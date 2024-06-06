<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\Permission;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Permission::create(['title_ar' => 'مشاهدة المجموعات', 'title_en' => 'show groups']);
        Permission::create(['title_ar' => 'اضافة المجموعات', 'title_en' => 'add groups']);
        Permission::create(['title_ar' => 'تعديل المجموعات', 'title_en' => 'edit groups']);
        Permission::create(['title_ar' => 'حذف المجموعات', 'title_en' => 'delete groups']);

        Permission::create(['title_ar' => 'مشاهدة كوبونات الخصم', 'title_en' => 'show promo codes']);
        Permission::create(['title_ar' => 'اضافة كوبونات الخصم', 'title_en' => 'add promo codes']);
        Permission::create(['title_ar' => 'تعديل كوبونات الخصم', 'title_en' => 'edit promo codes']);
        Permission::create(['title_ar' => 'حذف كوبونات الخصم', 'title_en' => 'delete promo codes']);

        Permission::create(['title_ar' => 'مشاهدة الطلبات', 'title_en' => 'show orders']);
        Permission::create(['title_ar' => 'تعديل اعدادات الطلبات', 'title_en' => 'edit orders setting']);
        Permission::create(['title_ar' => 'تعديل الطلبات', 'title_en' => 'edit orders']);

        Permission::create(['title_ar' => 'مشاهدة الأقسام', 'title_en' => 'show categories']);
        Permission::create(['title_ar' => 'اضافة الأقسام', 'title_en' => 'add categories']);
        Permission::create(['title_ar' => 'تعديل الأقسام', 'title_en' => 'edit categories']);
        Permission::create(['title_ar' => 'حذف الأقسام', 'title_en' => 'delete categories']);

        Permission::create(['title_ar' => 'مشاهدة البطاقات', 'title_en' => 'show cards']);
        Permission::create(['title_ar' => 'اضافة البطاقات', 'title_en' => 'add cards']);
        Permission::create(['title_ar' => 'تعديل البطاقات', 'title_en' => 'edit cards']);
        Permission::create(['title_ar' => 'حذف البطاقات', 'title_en' => 'delete cards']);

        Permission::create(['title_ar' => 'مشاهدة السيريالات', 'title_en' => 'show serials']);
        Permission::create(['title_ar' => 'اضافة السيريالات', 'title_en' => 'add serials']);
        Permission::create(['title_ar' => 'تعديل السيريالات', 'title_en' => 'edit serials']);
        Permission::create(['title_ar' => 'حذف السيريالات', 'title_en' => 'delete serials']);

        Permission::create(['title_ar' => 'مشاهدة المستخدمين', 'title_en' => 'show users']);
        Permission::create(['title_ar' => 'اضافة المستخدمين', 'title_en' => 'add users']);
        Permission::create(['title_ar' => 'تعديل المستخدمين', 'title_en' => 'edit users']);
        Permission::create(['title_ar' => 'حذف المستخدمين', 'title_en' => 'delete users']);
        Permission::create(['title_ar' => 'حظر المستخدمين', 'title_en' => 'block users']);
        Permission::create(['title_ar' => 'تنبيه المستخدمين', 'title_en' => 'notify users']);

        Permission::create(['title_ar' => 'مشاهدة المسئولين', 'title_en' => 'show admins']);
        Permission::create(['title_ar' => 'اضافة المسئولين', 'title_en' => 'add admins']);
        Permission::create(['title_ar' => 'تعديل المسئولين', 'title_en' => 'edit admins']);
        Permission::create(['title_ar' => 'حذف المسئولين', 'title_en' => 'delete admins']);
        Permission::create(['title_ar' => 'صلاحيات المسئولين', 'title_en' => 'admins permissions']);

        Permission::create(['title_ar' => 'مشاهدة رسائل التواصل', 'title_en' => 'show contact messages']);
        Permission::create(['title_ar' => 'الرد على رسائل التواصل', 'title_en' => 'response on contact messages']);
        Permission::create(['title_ar' => 'حذف رسائل التواصل', 'title_en' => 'delete contact messages']);

        Permission::create(['title_ar' => 'مشاهدة صور السلايد', 'title_en' => 'show slides']);
        Permission::create(['title_ar' => 'اضافة صور السلايد', 'title_en' => 'add slides']);
        Permission::create(['title_ar' => 'تعديل صور السلايد', 'title_en' => 'edit slides']);
        Permission::create(['title_ar' => 'حذف صور السلايد', 'title_en' => 'delete slides']);

        Permission::create(['title_ar' => 'مشاهدة الاعدادات', 'title_en' => 'show settings']);
        Permission::create(['title_ar' => 'تعديل الاعدادات', 'title_en' => 'edit settings']);

        Permission::create(['title_ar' => 'مشاهدة وسائل الدفع', 'title_en' => 'show payment methods']);
        Permission::create(['title_ar' => 'تعديل وسائل الدفع', 'title_en' => 'edit payment methods']);

        Permission::create(['title_ar' => 'مشاهدة من نحن', 'title_en' => 'show about us']);
        Permission::create(['title_ar' => 'تعديل من نحن', 'title_en' => 'edit about us']);

        Permission::create(['title_ar' => 'مشاهدة الشروط والأحكام', 'title_en' => 'show terms and condations']);
        Permission::create(['title_ar' => 'تعديل الشروط والأحكام', 'title_en' => 'edit terms and condations']);

        Permission::create(['title_ar' => 'مشاهدة صور سياسة الخصوصية', 'title_en' => 'show privacy policy']);
        Permission::create(['title_ar' => 'تعديل صور سياسة الخصوصية', 'title_en' => 'edit privacy policy']);

        foreach (Permission::get() as $key => $per) {
            Admin::find(1)->permissions()->attach($per->id);
        }
    }
}
