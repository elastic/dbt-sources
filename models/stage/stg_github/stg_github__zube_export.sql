
with source as (

    select * from {{ source('raw_github', 'zube_export') }}

),

renamed as (

    select
        github_url,
        snapshot_date,
        id,
        category_name,
        sprint,
        number,
        points,
        priority,
        state,
        status,
        title,
        created_at,
        updated_at,
        closed_at,
        created_by,
        epic,
        assignees,
        labels,
        crm,
        erp,
        pushed,
        pulled,
        bug

    from source

)

select * from renamed
