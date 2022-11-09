
with source as (

    select * from {{ source('raw_salesforce', 'rvpe_rvprogram_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        rvpe_ext_program_id_c,
        rvpe_program_url_c,
        system_modstamp

    from source

)

select * from renamed
