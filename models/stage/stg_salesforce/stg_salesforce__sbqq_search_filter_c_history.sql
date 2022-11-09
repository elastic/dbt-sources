
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_search_filter_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_action_c,
        sbqq_display_order_c,
        sbqq_filter_source_field_c,
        sbqq_filter_source_object_c,
        sbqq_filter_value_c,
        sbqq_hidden_c,
        sbqq_hidden_source_field_c,
        sbqq_hidden_source_object_c,
        sbqq_operator_c,
        sbqq_target_field_c,
        sbqq_target_object_c,
        system_modstamp

    from source

)

select * from renamed
