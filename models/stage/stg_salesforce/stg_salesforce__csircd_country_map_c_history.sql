
with source as (

    select * from {{ source('raw_salesforce', 'csircd_country_map_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        csircd_country_name_c,
        csircd_iso_2_code_c,
        csircd_iso_3_code_c,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
