
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_process_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_default_c,
        sbqq_guided_only_c,
        sbqq_product_auto_selected_c,
        sbqq_product_configuration_initializer_c,
        sbqq_product_search_executor_c,
        sbqq_sort_order_c,
        system_modstamp

    from source

)

select * from renamed
