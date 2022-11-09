
with source as (

    select * from {{ source('raw_salesforce', 'lexmagicmover_namnote_conversion_status_c') }}

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
        lexmagicmover_job_id_c,
        lexmagicmover_status_c,
        lexmagicmover_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
