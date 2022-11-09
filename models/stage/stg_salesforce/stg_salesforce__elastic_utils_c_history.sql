
with source as (

    select * from {{ source('raw_salesforce', 'elastic_utils_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        count_c,
        created_by_id,
        created_date,
        currency_iso_code,
        forecast_category_name_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        non_sub_products_c,
        order_ops_id_c,
        setup_owner_id,
        sub_slack_last_posted_c,
        support_level_order_c,
        system_modstamp,
        value_c

    from source

)

select * from renamed
