
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_arrangement') }}

),

renamed as (

    select
        billing_arrangement_id,
        _fivetran_deleted,
        _fivetran_synced,
        billing_arrangement_extid,
        billing_arrangement_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
