
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_tax_method_status_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_tax_method_status_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        partition_date

    from source

)

select * from renamed
