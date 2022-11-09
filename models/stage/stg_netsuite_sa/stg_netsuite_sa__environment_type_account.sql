
with source as (

    select * from {{ source('raw_netsuite_sa', 'environment_type_account') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        environment_type_account_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
