
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_control_assignees_map') }}

),

renamed as (

    select
        customization_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed