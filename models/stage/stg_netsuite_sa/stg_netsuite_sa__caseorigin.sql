
with source as (

    select * from {{ source('raw_netsuite_sa', 'caseorigin') }}

),

renamed as (

    select
        case_origin_id,
        _fivetran_deleted,
        _fivetran_synced,
        case_origin_extid,
        date_deleted,
        date_last_modified,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
