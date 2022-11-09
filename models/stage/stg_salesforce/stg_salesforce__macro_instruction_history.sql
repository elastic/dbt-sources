
with source as (

    select * from {{ source('raw_salesforce', 'macro_instruction_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        macro_id,
        name,
        operation,
        sort_order,
        system_modstamp,
        target,
        value,
        value_record

    from source

)

select * from renamed
