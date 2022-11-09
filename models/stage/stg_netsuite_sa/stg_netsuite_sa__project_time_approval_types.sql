
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_time_approval_types') }}

),

renamed as (

    select
        project_time_approval_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        description

    from source

)

select * from renamed
