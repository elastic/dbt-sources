
with source as (

    select * from {{ source('raw_netsuite_sa', 'casetype') }}

),

renamed as (

    select
        case_type,
        _fivetran_deleted,
        _fivetran_synced,
        case_type_extid,
        date_deleted,
        date_last_modified,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
