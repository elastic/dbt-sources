
with source as (

    select * from {{ source('raw_salesforce', 'lexmagicmover_namattachment_conversion_status_c') }}

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
        lexmagicmover_object_name_c,
        lexmagicmover_quantity_c,
        lexmagicmover_record_id_c,
        lexmagicmover_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
