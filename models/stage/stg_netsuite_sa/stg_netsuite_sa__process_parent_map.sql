
with source as (

    select * from {{ source('raw_netsuite_sa', 'process_parent_map') }}

),

renamed as (

    select
        process2_id,
        process_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
