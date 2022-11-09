
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_expense_types') }}

),

renamed as (

    select
        project_expense_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        date_deleted,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
