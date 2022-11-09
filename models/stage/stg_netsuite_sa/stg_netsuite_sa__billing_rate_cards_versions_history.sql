
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_rate_cards_versions_history') }}

),

renamed as (

    select
        billing_rate_card_id,
        version_0,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        date_effective,
        date_last_modified,
        last_modified_by_id,
        partition_date

    from source

)

select * from renamed
