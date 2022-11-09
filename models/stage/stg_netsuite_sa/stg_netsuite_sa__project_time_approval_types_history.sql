
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_time_approval_types_history') }}

),

renamed as (

    select
        project_time_approval_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        description,
        partition_date

    from source

)

select * from renamed
