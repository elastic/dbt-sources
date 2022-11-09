
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_log_audited_by_map') }}

),

renamed as (

    select
        change_log_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
