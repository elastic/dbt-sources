
with source as (

    select * from {{ source('raw_netsuite_sa', 'crmgroupmap') }}

),

renamed as (

    select
        entity_id,
        group_id,
        _fivetran_synced,
        is_primary,
        _fivetran_deleted,
        date_deleted,
        fivetran_index

    from source

)

select * from renamed
