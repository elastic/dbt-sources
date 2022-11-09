
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_action_item_category') }}

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
        one_action_item_category_extid

    from source

)

select * from renamed
