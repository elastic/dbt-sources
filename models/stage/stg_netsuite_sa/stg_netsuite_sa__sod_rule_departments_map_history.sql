
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_rule_departments_map_history') }}

),

renamed as (

    select
        department_id,
        sod_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
