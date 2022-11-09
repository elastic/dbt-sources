
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_request_affected_processes_map') }}

),

renamed as (

    select
        change_request_id,
        process_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
