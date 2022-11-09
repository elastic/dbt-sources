
with source as (

    select * from {{ source('raw_netsuite_sa', 'contract_item_statuses_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        contract_item_statuses_extid,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        partition_date

    from source

)

select * from renamed
