
with source as (

    select * from {{ source('raw_netsuite_sa', 'nature_of_transaction_history') }}

),

renamed as (

    select
        nature_of_transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nature_of_transaction_extid,
        nature_of_transaction_name,
        parent_id,
        partition_date

    from source

)

select * from renamed
