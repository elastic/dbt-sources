
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_term_condition_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_index_c,
        sbqq_operator_c,
        sbqq_quote_term_c,
        sbqq_tested_field_c,
        sbqq_tested_variable_c,
        sbqq_value_c,
        system_modstamp

    from source

)

select * from renamed
