
with source as (

    select * from {{ source('raw_netsuite_sa', 'subscription_terms') }}

),

renamed as (

    select
        term_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        duration,
        is_inactive,
        name,
        term_extid,
        term_type_id,
        unit_id

    from source

)

select * from renamed
