
with source as (

    select * from {{ source('raw_netsuite_sa', 'task_contacts') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        company_id,
        contact_id,
        date_deleted,
        task_id,
        fivetran_index

    from source

)

select * from renamed