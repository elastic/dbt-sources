
with source as (

    select * from {{ source('raw_salesforce', 'ironclad_error_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ironclad_action_taken_c,
        ironclad_dump_c,
        ironclad_line_number_c,
        ironclad_message_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
