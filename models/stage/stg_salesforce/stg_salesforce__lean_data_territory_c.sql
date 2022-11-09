
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_territory_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_territory_segment_c,
        name,
        system_modstamp,
        lean_data_name_c,
        lean_data_owner_c,
        lean_data_version_c,
        lean_data_ld_territory_c

    from source

)

select * from renamed
