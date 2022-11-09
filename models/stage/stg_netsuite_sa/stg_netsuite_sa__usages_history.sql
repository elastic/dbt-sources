
with source as (

    select * from {{ source('raw_netsuite_sa', 'usages_history') }}

),

renamed as (

    select
        usage_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_usage,
        usage_customer_id,
        usage_extid,
        usage_item_id,
        usage_memo,
        usage_quantity,
        usage_subscription_id,
        usage_subscription_line_id,
        usage_subscription_plan_id,
        status_id,
        partition_date

    from source

)

select * from renamed
