
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_type_list_history') }}

),

renamed as (

    select
        transaction_type_list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        description_id,
        is_inactive,
        last_modified_date,
        parent_id,
        transaction_type_list_extid,
        transaction_type_list_name,
        partition_date

    from source

)

select * from renamed
