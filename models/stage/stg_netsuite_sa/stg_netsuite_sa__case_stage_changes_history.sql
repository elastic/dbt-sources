
with source as (

    select * from {{ source('raw_netsuite_sa', 'case_stage_changes_history') }}

),

renamed as (

    select
        case_id,
        start_date,
        _fivetran_synced,
        casestage,
        _fivetran_deleted,
        date_deleted,
        fivetran_index,
        partition_date

    from source

)

select * from renamed
