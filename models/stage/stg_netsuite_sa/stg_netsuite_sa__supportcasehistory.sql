
with source as (

    select * from {{ source('raw_netsuite_sa', 'supportcasehistory') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        case_id,
        date_closed,
        date_created,
        date_deleted,
        employee_id,
        fivetran_index

    from source

)

select * from renamed
