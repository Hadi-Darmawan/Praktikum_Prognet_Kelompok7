<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted' => 'Kolom :Attribute harus diterima',
    'active_url' => 'Kolom :Attribute bukan URL yang valid',
    'after' => 'Kolom :Attribute harus tanggal setelah :date',
    'after_or_equal' => 'Kolom :Attribute harus berupa tanggal setelah atau sama dengan tanggal :date',
    'alpha' => 'Kolom :Attribute hanya boleh berisi huruf',
    'alpha_dash' => 'Kolom :Attribute hanya boleh berisi huruf, angka, dan strip',
    'alpha_num' => 'Kolom :Attribute hanya boleh berisi huruf dan angka',
    'array' => 'Kolom :Attribute harus berupa sebuah array',
    'before' => 'Kolom :Attribute harus tanggal sebelum :date',
    'before_or_equal' => 'Kolom :Attribute harus berupa tanggal sebelum atau sama dengan tanggal :date',
    'between' => [
        'numeric' => 'Kolom :Attribute harus antara :min dan :max',
        'file' => 'Kolom :Attribute harus antara :min dan :max kilobytes',
        'string' => 'Kolom :Attribute harus antara :min dan :max karakter',
        'array' => 'Kolom :Attribute harus antara :min dan :max item',
    ],
    'boolean' => 'Kolom :Attribute harus berupa true atau false',
    'confirmed' => 'Konfirmasi :Attribute tidak cocok',
    'date' => 'Kolom :Attribute bukan tanggal yang valid',
    'date_format' => 'Kolom :Attribute tidak cocok dengan format :format',
    'different' => 'Kolom :Attribute dan :other harus berbeda',
    'digits' => 'Kolom :Attribute harus berjumlah :digits angka',
    'digits_between' => 'Kolom :Attribute harus berjumlah antara :min sampai :max angka',
    'dimensions' => 'Kolom :Attribute tidak memiliki dimensi gambar yang valid',
    'distinct' => 'Kolom :Attribute memiliki nilai yang duplikat',
    'email' => 'Kolom :Attribute harus berupa email yang valid',
    'exists' => 'Kolom :Attribute yang dipilih tidak valid',
    'file' => 'Kolom :Attribute harus berupa sebuah berkas',
    'filled' => 'Kolom :Attribute harus memiliki nilai',
    'image' => 'Kolom :Attribute harus berupa gambar',
    'in' => 'Kolom :Attribute yang dipilih tidak valid',
    'in_array' => 'Kolom :Attribute tidak terdapat dalam :other',
    'integer' => 'Kolom :Attribute harus merupakan bilangan bulat',
    'ip' => 'Kolom :Attribute harus berupa alamat IP yang valid',
    'ipv4' => 'Kolom :Attribute harus berupa alamat IPv4 yang valid',
    'ipv6' => 'Kolom :Attribute harus berupa alamat IPv6 yang valid',
    'json' => 'Kolom :Attribute harus berupa JSON string yang valid',
    'max' => [
        'numeric' => 'Kolom :Attribute seharusnya tidak lebih dari :max',
        'file' => 'Kolom :Attribute seharusnya tidak lebih dari :max kilobytes',
        'string' => 'Kolom :Attribute seharusnya tidak lebih dari :max karakter',
        'array' => 'Kolom :Attribute seharusnya tidak lebih dari :max item',
    ],
    'mimes' => 'Kolom :Attribute harus dokumen berjenis : :values',
    'mimetypes' => 'Kolom :Attribute harus dokumen berjenis : :values',
    'min' => [
        'numeric' => 'Kolom :Attribute harus minimal :min',
        'file' => 'Kolom :Attribute harus minimal :min kilobytes',
        'string' => 'Kolom :Attribute harus minimal :min karakter',
        'array' => 'Kolom :Attribute harus minimal :min item',
    ],
    'not_in' => 'Kolom :Attribute yang dipilih tidak valid',
    'numeric' => 'Kolom :Attribute harus berupa angka',
    'present' => 'Kolom :Attribute wajib ada',
    'regex' => 'Format kolom :Attribute tidak sesuai',
    'not_regex' => 'Format kolom :Attribute tidak sesuai',
    'required' => 'Kolom :Attribute wajib diisi',
    'required_if' => 'Kolom :Attribute wajib diisi bila :other adalah :value',
    'required_unless' => 'Kolom :Attribute wajib diisi kecuali :other memiliki nilai :values',
    'required_with' => 'Kolom :Attribute wajib diisi bila terdapat :values',
    'required_with_all' => 'Kolom :Attribute wajib diisi bila terdapat :values',
    'required_without' => 'Kolom :Attribute wajib diisi bila tidak terdapat :values',
    'required_without_all' => 'Kolom :Attribute wajib diisi bila tidak terdapat ada :values',
    'same' => 'Kolom :Attribute dan :other harus sama',
    'size' => [
        'numeric' => 'Kolom :Attribute harus berukuran :size',
        'file' => 'Kolom :Attribute harus berukuran :size kilobyte',
        'string' => 'Kolom :Attribute harus berukuran :size karakter',
        'array' => 'Kolom :Attribute harus mengandung :size item',
    ],
    'string' => 'Kolom :Attribute harus berupa string',
    'timezone' => 'Kolom :Attribute harus berupa zona waktu yang valid',
    'unique' => ':Attribute telah digunakan sebelumnya',
    'uploaded' => 'Kolom :Attribute gagal diunggah',
    'url' => 'Format Kolom :Attribute tidak valid',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap our attribute placeholder
    | with something more reader friendly such as "E-Mail Address" instead
    | of "email". This simply helps us make our message more expressive.
    |
    */

    'attributes' => [],

];
