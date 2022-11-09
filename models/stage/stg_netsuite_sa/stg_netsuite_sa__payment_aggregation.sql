
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_aggregation') }}

),

renamed as (

    select
        payment_aggregation_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_aggregation_extid,
        payment_aggregation_name,
        transaction_field_id

    from source

)

select * from renamed
