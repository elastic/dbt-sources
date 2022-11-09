
with source as (

    select * from {{ source('raw_netsuite', 'system_notes') }}

),

renamed as (

    select
        author_id,
        company_id,
        context_type_name,
        custom_field,
        date_created,
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
        value_old

    from source

)

select * from renamed
