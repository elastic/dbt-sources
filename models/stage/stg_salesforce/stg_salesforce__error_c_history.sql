
with source as (

    select * from {{ source('raw_salesforce', 'error_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        error_message_c,
        exception_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        object_type_c,
        owner_id,
        raw_object_c,
        record_id_c,
        related_project_c,
        short_description_c,
        source_url_c,
        stack_trace_c,
        system_modstamp

    from source

)

select * from renamed
