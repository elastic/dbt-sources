
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_custom_action_condition_c') }}

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
        name,
        sbqq_custom_action_c,
        sbqq_field_c,
        sbqq_filter_value_c,
        sbqq_operator_c,
        sbqq_parent_action_is_active_c,
        sbqq_target_object_c,
        system_modstamp

    from source

)

select * from renamed
