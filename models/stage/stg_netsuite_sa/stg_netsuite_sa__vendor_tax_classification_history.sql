
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_tax_classification_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        vendor_tax_classification_exti,
        partition_date

    from source

)

select * from renamed
