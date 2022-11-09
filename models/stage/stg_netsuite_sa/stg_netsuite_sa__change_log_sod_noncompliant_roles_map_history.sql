
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_log_sod_noncompliant_roles_map_history') }}

),

renamed as (

    select
        change_log_id,
        role_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
