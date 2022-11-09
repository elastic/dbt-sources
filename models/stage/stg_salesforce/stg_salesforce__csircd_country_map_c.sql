
with source as (

    select * from {{ source('raw_salesforce', 'csircd_country_map_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        csircd_country_name_c,
        csircd_iso_2_code_c,
        csircd_iso_3_code_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
