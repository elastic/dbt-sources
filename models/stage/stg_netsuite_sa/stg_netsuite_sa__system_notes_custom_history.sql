
with source as (

    select * from {{ source('raw_netsuite_sa', 'system_notes_custom_history') }}

),

renamed as (

    select
        _fivetran_id,
        date_created,
        _fivetran_synced,
        author_id,
        company_id,
        context_type_name,
        custom_field,
        customfield_created_by_id,
        customfield_modified_by_id,
        date_customfield_created,
        date_customfield_modified,
        event_id,
        item_id,
        line_id,
        line_transaction_id,
        name,
        note_type_id,
        operation,
        record_id,
        record_type_id,
        role_id,
        standard_field,
        transaction_id,
        value_new,
        value_old,
        partition_date

    from source

)

select * from renamed
