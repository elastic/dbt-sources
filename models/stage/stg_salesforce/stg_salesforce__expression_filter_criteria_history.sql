
with source as (

    select * from {{ source('raw_salesforce', 'expression_filter_criteria_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        expression_filter_id,
        filter_target,
        filter_target_value,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        operation,
        sort_order,
        system_modstamp

    from source

)

select * from renamed
