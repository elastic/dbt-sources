
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_grouping_summary_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_batch_tracking_control_c,
        ffrr_expanded_c,
        ffrr_field_c,
        ffrr_field_label_c,
        ffrr_grouping_order_c,
        ffrr_grouping_parent_c,
        ffrr_grouping_value_hash_c,
        ffrr_is_expandable_c,
        ffrr_previously_amortized_c,
        ffrr_previously_recognized_c,
        ffrr_sobject_type_c,
        ffrr_to_amortize_this_period_c,
        ffrr_to_recognize_this_period_c,
        ffrr_total_cost_c,
        ffrr_total_leaf_record_count_c,
        ffrr_total_revenue_c,
        ffrr_version_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
