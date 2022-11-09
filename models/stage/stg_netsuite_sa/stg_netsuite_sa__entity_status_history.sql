
with source as (

    select * from {{ source('raw_netsuite_sa', 'entity_status_history') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        comment_0,
        date_0,
        date_deleted,
        entity_id,
        entity_status_new_id,
        entity_status_old_id,
        fivetran_index

    from source

)

select * from renamed
