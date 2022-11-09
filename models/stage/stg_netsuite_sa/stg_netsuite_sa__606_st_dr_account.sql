
with source as (

    select * from {{ source('raw_netsuite_sa', '606_st_dr_account') }}

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
        n_606_st_dr_account_extid

    from source

)

select * from renamed
