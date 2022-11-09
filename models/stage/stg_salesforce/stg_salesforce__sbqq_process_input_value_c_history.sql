
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_process_input_value_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        sbqq_process_input_id_c,
        sbqq_quote_id_c,
        sbqq_user_id_c,
        sbqq_value_c,
        system_modstamp

    from source

)

select * from renamed
