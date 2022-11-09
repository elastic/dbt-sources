
with source as (

    select * from {{ source('raw_workday', 'org_chart') }}

),

renamed as (

    select
        full_name,
        work_email,
        _fivetran_deleted,
        _fivetran_synced,
        job_title,
        manager,
        supervisory_organization

    from source

)

select * from renamed
