
with source as (

    select * from {{ source('raw_netsuite_sa', 'case_stage_changes') }}

),

renamed as (

    select
        case_id,
        start_date,
        _fivetran_synced,
        casestage,
        _fivetran_deleted,
        date_deleted,
        fivetran_index

    from source

)

select * from renamed
